#Get current storage usage
Get-Volume | Sort-Object -Property 'DriveLetter'
Get-ChildItem -Path S:

#Install the Data Depulication role
Install-WindowsFeature -Name FS-Data-Deduplication -IncludeManagementTools

#Enable the volume for deduplication
Enable-DedupVolume -Volume "S:" -UsageType Default
Set-DedupVolume -Volume "S:" -MinimumFileAgeDays 0

#Start the optimization job
Start-DedupJob -Type Optimization -Volume S: -Memory 100 -Cores 100 -Priority High -Preempt

#Look at current jobs
Get-DedupJob

#Check the deduplication schedule
Get-DedupSchedule

#Set a weekday optimization schedule
New-DedupSchedule -Name "WeekdayOptimize" -Type Optimization -Days Monday,Tuesday,Wednesday,Thursday,Friday -Start 21:00 -DurationHours 8
    
# Current status
Get-DedupStatus
