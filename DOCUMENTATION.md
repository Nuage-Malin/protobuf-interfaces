# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [UsersBack_Maestro/UsersBack_Maestro.proto](#UsersBack_Maestro_UsersBack_Maestro-proto)
    - [AskFileDownloadRequest](#UsersBack_Maestro-AskFileDownloadRequest)
    - [AskFileDownloadStatus](#UsersBack_Maestro-AskFileDownloadStatus)
    - [CancelFileDownloadRequest](#UsersBack_Maestro-CancelFileDownloadRequest)
    - [CancelFileDownloadStatus](#UsersBack_Maestro-CancelFileDownloadStatus)
    - [DirMakeRequest](#UsersBack_Maestro-DirMakeRequest)
    - [DirMakeStatus](#UsersBack_Maestro-DirMakeStatus)
    - [DirRemoveRequest](#UsersBack_Maestro-DirRemoveRequest)
    - [DirRemoveStatus](#UsersBack_Maestro-DirRemoveStatus)
    - [FileDownloadRequest](#UsersBack_Maestro-FileDownloadRequest)
    - [FileRemoveRequest](#UsersBack_Maestro-FileRemoveRequest)
    - [FileRemoveStatus](#UsersBack_Maestro-FileRemoveStatus)
    - [FileUploadRequest](#UsersBack_Maestro-FileUploadRequest)
    - [FileUploadStatus](#UsersBack_Maestro-FileUploadStatus)
    - [FilesRemoveRequest](#UsersBack_Maestro-FilesRemoveRequest)
    - [FilesRemoveStatus](#UsersBack_Maestro-FilesRemoveStatus)
    - [GetDisksStatusRequest](#UsersBack_Maestro-GetDisksStatusRequest)
    - [GetDisksStatusStatus](#UsersBack_Maestro-GetDisksStatusStatus)
    - [GetFilesIndexRequest](#UsersBack_Maestro-GetFilesIndexRequest)
    - [GetFilesIndexStatus](#UsersBack_Maestro-GetFilesIndexStatus)
    - [GetUserConsumptionRequest](#UsersBack_Maestro-GetUserConsumptionRequest)
    - [GetUserConsumptionStatus](#UsersBack_Maestro-GetUserConsumptionStatus)
    - [GetUserDiskSpaceRequest](#UsersBack_Maestro-GetUserDiskSpaceRequest)
    - [GetUserDiskSpaceStatus](#UsersBack_Maestro-GetUserDiskSpaceStatus)
    - [MoveDirectoryRequest](#UsersBack_Maestro-MoveDirectoryRequest)
    - [MoveDirectoryStatus](#UsersBack_Maestro-MoveDirectoryStatus)
    - [MoveFileRequest](#UsersBack_Maestro-MoveFileRequest)
    - [MoveFileStatus](#UsersBack_Maestro-MoveFileStatus)
    - [RemoveUserRequest](#UsersBack_Maestro-RemoveUserRequest)
    - [RemoveUserStatus](#UsersBack_Maestro-RemoveUserStatus)
    - [RenameDirectoryRequest](#UsersBack_Maestro-RenameDirectoryRequest)
    - [RenameDirectoryStatus](#UsersBack_Maestro-RenameDirectoryStatus)
    - [RenameFileRequest](#UsersBack_Maestro-RenameFileRequest)
    - [RenameFileStatus](#UsersBack_Maestro-RenameFileStatus)
  
    - [UsersBack_Maestro_Service](#UsersBack_Maestro-UsersBack_Maestro_Service)
  
- [Maestro_Santaclaus/Maestro_Santaclaus.proto](#Maestro_Santaclaus_Maestro_Santaclaus-proto)
    - [AddDirectoryRequest](#Maestro_Santaclaus-AddDirectoryRequest)
    - [AddDirectoryStatus](#Maestro_Santaclaus-AddDirectoryStatus)
    - [AddFileRequest](#Maestro_Santaclaus-AddFileRequest)
    - [AddFileStatus](#Maestro_Santaclaus-AddFileStatus)
    - [ChangeFileDiskRequest](#Maestro_Santaclaus-ChangeFileDiskRequest)
    - [ChangeFileDiskStatus](#Maestro_Santaclaus-ChangeFileDiskStatus)
    - [GetDirectoryRequest](#Maestro_Santaclaus-GetDirectoryRequest)
    - [GetDirectoryStatus](#Maestro_Santaclaus-GetDirectoryStatus)
    - [GetFileRequest](#Maestro_Santaclaus-GetFileRequest)
    - [GetFileStatus](#Maestro_Santaclaus-GetFileStatus)
    - [MoveDirectoryRequest](#Maestro_Santaclaus-MoveDirectoryRequest)
    - [MoveDirectoryStatus](#Maestro_Santaclaus-MoveDirectoryStatus)
    - [MoveFileRequest](#Maestro_Santaclaus-MoveFileRequest)
    - [MoveFileStatus](#Maestro_Santaclaus-MoveFileStatus)
    - [RemoveDirectoryRequest](#Maestro_Santaclaus-RemoveDirectoryRequest)
    - [RemoveDirectoryStatus](#Maestro_Santaclaus-RemoveDirectoryStatus)
    - [RemoveFileRequest](#Maestro_Santaclaus-RemoveFileRequest)
    - [RemoveFileStatus](#Maestro_Santaclaus-RemoveFileStatus)
    - [RemoveFilesRequest](#Maestro_Santaclaus-RemoveFilesRequest)
    - [RemoveFilesStatus](#Maestro_Santaclaus-RemoveFilesStatus)
    - [RemoveUserRequest](#Maestro_Santaclaus-RemoveUserRequest)
    - [RenameDirectoryRequest](#Maestro_Santaclaus-RenameDirectoryRequest)
    - [RenameDirectoryStatus](#Maestro_Santaclaus-RenameDirectoryStatus)
    - [RenameFileRequest](#Maestro_Santaclaus-RenameFileRequest)
    - [RenameFileStatus](#Maestro_Santaclaus-RenameFileStatus)
    - [UpdateFileSuccessRequest](#Maestro_Santaclaus-UpdateFileSuccessRequest)
    - [UpdateFileSuccessStatus](#Maestro_Santaclaus-UpdateFileSuccessStatus)
  
    - [Maestro_Santaclaus_Service](#Maestro_Santaclaus-Maestro_Santaclaus_Service)
  
- [common/Disk.proto](#common_Disk-proto)
    - [Disk](#Disk-Disk)
    - [DiskStatus](#Disk-DiskStatus)
  
- [common/Cron.proto](#common_Cron-proto)
    - [Job](#Cron-Job)
    - [Task](#Cron-Task)
  
- [common/File.proto](#common_File-proto)
    - [DirMetadata](#File-DirMetadata)
    - [File](#File-File)
    - [FileApproxMetadata](#File-FileApproxMetadata)
    - [FileMetadata](#File-FileMetadata)
    - [FilesIndex](#File-FilesIndex)
    - [NewFile](#File-NewFile)
  
    - [FileState](#File-FileState)
  
- [Santaclaus_HardwareMalin/Santaclaus_HardwareMalin.proto](#Santaclaus_HardwareMalin_Santaclaus_HardwareMalin-proto)
    - [GetDisksRequest](#Santaclaus_HardwareMalin-GetDisksRequest)
    - [GetDisksStatus](#Santaclaus_HardwareMalin-GetDisksStatus)
  
    - [Santaclaus_HardwareMalin_Service](#Santaclaus_HardwareMalin-Santaclaus_HardwareMalin_Service)
  
- [Chouf_Maestro/Chouf_Maestro.proto](#Chouf_Maestro_Chouf_Maestro-proto)
    - [ChangeCronStateRequest](#Chouf_Maestro-ChangeCronStateRequest)
    - [ChangeCronStateStatus](#Chouf_Maestro-ChangeCronStateStatus)
    - [ChangeJobStateRequest](#Chouf_Maestro-ChangeJobStateRequest)
    - [ChangeJobStateStatus](#Chouf_Maestro-ChangeJobStateStatus)
    - [ChangeMultipleInstancesStateRequest](#Chouf_Maestro-ChangeMultipleInstancesStateRequest)
    - [ChangeMultipleInstancesStateStatus](#Chouf_Maestro-ChangeMultipleInstancesStateStatus)
    - [ForceStartJobTaskRequest](#Chouf_Maestro-ForceStartJobTaskRequest)
    - [ForceStartJobTaskStatus](#Chouf_Maestro-ForceStartJobTaskStatus)
    - [GetCronStatus](#Chouf_Maestro-GetCronStatus)
    - [GetCronStatusRequest](#Chouf_Maestro-GetCronStatusRequest)
    - [GetJobRequest](#Chouf_Maestro-GetJobRequest)
    - [GetJobStatus](#Chouf_Maestro-GetJobStatus)
    - [GetJobsRequest](#Chouf_Maestro-GetJobsRequest)
    - [GetJobsStatus](#Chouf_Maestro-GetJobsStatus)
    - [WaitTasksRequest](#Chouf_Maestro-WaitTasksRequest)
    - [WaitTasksStatus](#Chouf_Maestro-WaitTasksStatus)
  
    - [Chouf_Maestro_Service](#Chouf_Maestro-Chouf_Maestro_Service)
  
- [Maestro_Vault/Maestro_Vault.proto](#Maestro_Vault_Maestro_Vault-proto)
    - [DownloadFileRequest](#Maestro_Vault-DownloadFileRequest)
    - [DownloadFileStatus](#Maestro_Vault-DownloadFileStatus)
    - [DownloadFilesElemStatus](#Maestro_Vault-DownloadFilesElemStatus)
    - [DownloadFilesRequest](#Maestro_Vault-DownloadFilesRequest)
    - [DownloadFilesStatus](#Maestro_Vault-DownloadFilesStatus)
    - [DownloadStorageTypeFilesRequest](#Maestro_Vault-DownloadStorageTypeFilesRequest)
    - [FileMetaInfo](#Maestro_Vault-FileMetaInfo)
    - [GetFileMetaInfoRequest](#Maestro_Vault-GetFileMetaInfoRequest)
    - [GetFileMetaInfoStatus](#Maestro_Vault-GetFileMetaInfoStatus)
    - [GetFilesDisksRequest](#Maestro_Vault-GetFilesDisksRequest)
    - [GetFilesDisksStatus](#Maestro_Vault-GetFilesDisksStatus)
    - [GetFilesMetaInfoRequest](#Maestro_Vault-GetFilesMetaInfoRequest)
    - [GetFilesMetaInfoStatus](#Maestro_Vault-GetFilesMetaInfoStatus)
    - [ModifyFileRequest](#Maestro_Vault-ModifyFileRequest)
    - [ModifyFileStatus](#Maestro_Vault-ModifyFileStatus)
    - [RemoveFileRequest](#Maestro_Vault-RemoveFileRequest)
    - [RemoveFileStatus](#Maestro_Vault-RemoveFileStatus)
    - [RemoveFilesRequest](#Maestro_Vault-RemoveFilesRequest)
    - [RemoveFilesStatus](#Maestro_Vault-RemoveFilesStatus)
    - [RemoveUserRequest](#Maestro_Vault-RemoveUserRequest)
    - [RemoveUserStatus](#Maestro_Vault-RemoveUserStatus)
    - [UploadFileRequest](#Maestro_Vault-UploadFileRequest)
    - [UploadFileStatus](#Maestro_Vault-UploadFileStatus)
    - [UploadFilesRequest](#Maestro_Vault-UploadFilesRequest)
    - [UploadFilesStatus](#Maestro_Vault-UploadFilesStatus)
  
    - [storage_type](#Maestro_Vault-storage_type)
  
    - [Maestro_Vault_Service](#Maestro_Vault-Maestro_Vault_Service)
  
- [Maestro_HardwareMalin/Maestro_HardwareMalin.proto](#Maestro_HardwareMalin_Maestro_HardwareMalin-proto)
    - [DiskStatusRequest](#Maestro_HardwareMalin-DiskStatusRequest)
    - [DiskStatusStatus](#Maestro_HardwareMalin-DiskStatusStatus)
    - [SetDiskStateRequest](#Maestro_HardwareMalin-SetDiskStateRequest)
    - [SetDiskStateStatus](#Maestro_HardwareMalin-SetDiskStateStatus)
  
    - [Maestro_HardwareMalin_Service](#Maestro_HardwareMalin-Maestro_HardwareMalin_Service)
  
- [Scalar Value Types](#scalar-value-types)



<a name="UsersBack_Maestro_UsersBack_Maestro-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## UsersBack_Maestro/UsersBack_Maestro.proto



<a name="UsersBack_Maestro-AskFileDownloadRequest"></a>

### AskFileDownloadRequest
File id corresponding to the file to be made available for download


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |






<a name="UsersBack_Maestro-AskFileDownloadStatus"></a>

### AskFileDownloadStatus
Time until which the file will be made available for download


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| waitingTime | [google.protobuf.Duration](#google-protobuf-Duration) |  |  |






<a name="UsersBack_Maestro-CancelFileDownloadRequest"></a>

### CancelFileDownloadRequest
Id of the file to be canceled


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |






<a name="UsersBack_Maestro-CancelFileDownloadStatus"></a>

### CancelFileDownloadStatus







<a name="UsersBack_Maestro-DirMakeRequest"></a>

### DirMakeRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| directory | [File.FileApproxMetadata](#File-FileApproxMetadata) |  |  |






<a name="UsersBack_Maestro-DirMakeStatus"></a>

### DirMakeStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dirId | [string](#string) |  |  |






<a name="UsersBack_Maestro-DirRemoveRequest"></a>

### DirRemoveRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dirId | [string](#string) |  |  |






<a name="UsersBack_Maestro-DirRemoveStatus"></a>

### DirRemoveStatus







<a name="UsersBack_Maestro-FileDownloadRequest"></a>

### FileDownloadRequest
File id corresponding to the file to be downloaded


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |






<a name="UsersBack_Maestro-FileRemoveRequest"></a>

### FileRemoveRequest
File to be removed


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |






<a name="UsersBack_Maestro-FileRemoveStatus"></a>

### FileRemoveStatus







<a name="UsersBack_Maestro-FileUploadRequest"></a>

### FileUploadRequest
File to be uploaded to the server


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [File.NewFile](#File-NewFile) |  |  |






<a name="UsersBack_Maestro-FileUploadStatus"></a>

### FileUploadStatus
Response from the server after uploading a file, status is known through return value


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |






<a name="UsersBack_Maestro-FilesRemoveRequest"></a>

### FilesRemoveRequest
File to be removed


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) | repeated |  |






<a name="UsersBack_Maestro-FilesRemoveStatus"></a>

### FilesRemoveStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileIdFailures | [string](#string) | repeated |  |






<a name="UsersBack_Maestro-GetDisksStatusRequest"></a>

### GetDisksStatusRequest







<a name="UsersBack_Maestro-GetDisksStatusStatus"></a>

### GetDisksStatusStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| disks | [Disk.DiskStatus](#Disk-DiskStatus) | repeated |  |






<a name="UsersBack_Maestro-GetFilesIndexRequest"></a>

### GetFilesIndexRequest
Information indicating what list of file should be provided


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dirId | [string](#string) | optional | If not set, get root directory |
| userId | [string](#string) |  |  |
| isRecursive | [bool](#bool) |  |  |






<a name="UsersBack_Maestro-GetFilesIndexStatus"></a>

### GetFilesIndexStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subFiles | [File.FilesIndex](#File-FilesIndex) |  |  |






<a name="UsersBack_Maestro-GetUserConsumptionRequest"></a>

### GetUserConsumptionRequest
Users consumption on a period


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) |  |  |
| startDate | [google.protobuf.Timestamp](#google-protobuf-Timestamp) | optional | Start date of the period |
| endDate | [google.protobuf.Timestamp](#google-protobuf-Timestamp) | optional | End date of the period (default as now) |






<a name="UsersBack_Maestro-GetUserConsumptionStatus"></a>

### GetUserConsumptionStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| consumption | [uint64](#uint64) |  |  |






<a name="UsersBack_Maestro-GetUserDiskSpaceRequest"></a>

### GetUserDiskSpaceRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) |  |  |
| date | [google.protobuf.Timestamp](#google-protobuf-Timestamp) | optional | Date can be now or an older one (default as now) |






<a name="UsersBack_Maestro-GetUserDiskSpaceStatus"></a>

### GetUserDiskSpaceStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| totalDiskSpace | [uint64](#uint64) |  |  |
| usedDiskSpace | [uint64](#uint64) |  |  |






<a name="UsersBack_Maestro-MoveDirectoryRequest"></a>

### MoveDirectoryRequest
Directory to move


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dirId | [string](#string) |  | Dir to be moved |
| newDirId | [string](#string) |  | DirId to store this dir in (aka new parent dir) |






<a name="UsersBack_Maestro-MoveDirectoryStatus"></a>

### MoveDirectoryStatus







<a name="UsersBack_Maestro-MoveFileRequest"></a>

### MoveFileRequest
File to move


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |
| newDirId | [string](#string) |  |  |






<a name="UsersBack_Maestro-MoveFileStatus"></a>

### MoveFileStatus







<a name="UsersBack_Maestro-RemoveUserRequest"></a>

### RemoveUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) |  |  |






<a name="UsersBack_Maestro-RemoveUserStatus"></a>

### RemoveUserStatus







<a name="UsersBack_Maestro-RenameDirectoryRequest"></a>

### RenameDirectoryRequest
Directory to move


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dirId | [string](#string) |  | Dir to be renamed |
| newDirName | [string](#string) |  | New Name |






<a name="UsersBack_Maestro-RenameDirectoryStatus"></a>

### RenameDirectoryStatus







<a name="UsersBack_Maestro-RenameFileRequest"></a>

### RenameFileRequest
file to rename and new file name


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  | file to be renamed |
| newFileName | [string](#string) |  | New name of file |






<a name="UsersBack_Maestro-RenameFileStatus"></a>

### RenameFileStatus






 

 

 


<a name="UsersBack_Maestro-UsersBack_Maestro_Service"></a>

### UsersBack_Maestro_Service
Procedures from UsersBack to Maestro

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| fileUpload | [FileUploadRequest](#UsersBack_Maestro-FileUploadRequest) | [FileUploadStatus](#UsersBack_Maestro-FileUploadStatus) | Files

Upload a file |
| askFileDownload | [AskFileDownloadRequest](#UsersBack_Maestro-AskFileDownloadRequest) | [AskFileDownloadStatus](#UsersBack_Maestro-AskFileDownloadStatus) | Ask to download a file |
| cancelFileDownload | [CancelFileDownloadRequest](#UsersBack_Maestro-CancelFileDownloadRequest) | [CancelFileDownloadStatus](#UsersBack_Maestro-CancelFileDownloadStatus) | Cancel a file download (success even if file was not asked) |
| fileDownload | [FileDownloadRequest](#UsersBack_Maestro-FileDownloadRequest) | [.File.File](#File-File) | Download a file if already asked |
| fileRemove | [FileRemoveRequest](#UsersBack_Maestro-FileRemoveRequest) | [FileRemoveStatus](#UsersBack_Maestro-FileRemoveStatus) | Delete an existing file |
| filesRemove | [FilesRemoveRequest](#UsersBack_Maestro-FilesRemoveRequest) | [FilesRemoveStatus](#UsersBack_Maestro-FilesRemoveStatus) | Delete an existing file |
| moveFile | [MoveFileRequest](#UsersBack_Maestro-MoveFileRequest) | [MoveFileStatus](#UsersBack_Maestro-MoveFileStatus) | Change directory of an existing file |
| renameFile | [RenameFileRequest](#UsersBack_Maestro-RenameFileRequest) | [RenameFileStatus](#UsersBack_Maestro-RenameFileStatus) | Change name of an existing file |
| dirMake | [DirMakeRequest](#UsersBack_Maestro-DirMakeRequest) | [DirMakeStatus](#UsersBack_Maestro-DirMakeStatus) | Directories

Create directory |
| dirRemove | [DirRemoveRequest](#UsersBack_Maestro-DirRemoveRequest) | [DirRemoveStatus](#UsersBack_Maestro-DirRemoveStatus) | Delete directory |
| moveDir | [MoveDirectoryRequest](#UsersBack_Maestro-MoveDirectoryRequest) | [MoveDirectoryStatus](#UsersBack_Maestro-MoveDirectoryStatus) | Change position of an existing directory |
| renameDir | [RenameDirectoryRequest](#UsersBack_Maestro-RenameDirectoryRequest) | [RenameDirectoryStatus](#UsersBack_Maestro-RenameDirectoryStatus) | Change name of an existing directory |
| getFilesIndex | [GetFilesIndexRequest](#UsersBack_Maestro-GetFilesIndexRequest) | [GetFilesIndexStatus](#UsersBack_Maestro-GetFilesIndexStatus) | Get file list (ls) |
| getUserConsumption | [GetUserConsumptionRequest](#UsersBack_Maestro-GetUserConsumptionRequest) | [GetUserConsumptionStatus](#UsersBack_Maestro-GetUserConsumptionStatus) | Get users consumption on period |
| getUserDiskSpace | [GetUserDiskSpaceRequest](#UsersBack_Maestro-GetUserDiskSpaceRequest) | [GetUserDiskSpaceStatus](#UsersBack_Maestro-GetUserDiskSpaceStatus) |  |
| getDisksStatus | [GetDisksStatusRequest](#UsersBack_Maestro-GetDisksStatusRequest) | [GetDisksStatusStatus](#UsersBack_Maestro-GetDisksStatusStatus) | List disks with there status |
| removeUser | [RemoveUserRequest](#UsersBack_Maestro-RemoveUserRequest) | [RemoveUserStatus](#UsersBack_Maestro-RemoveUserStatus) | Remove a user |

 



<a name="Maestro_Santaclaus_Maestro_Santaclaus-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## Maestro_Santaclaus/Maestro_Santaclaus.proto



<a name="Maestro_Santaclaus-AddDirectoryRequest"></a>

### AddDirectoryRequest
Directory to add to the index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| directory | [File.FileApproxMetadata](#File-FileApproxMetadata) |  |  |






<a name="Maestro_Santaclaus-AddDirectoryStatus"></a>

### AddDirectoryStatus
Directory added infos


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dirId | [string](#string) |  |  |






<a name="Maestro_Santaclaus-AddFileRequest"></a>

### AddFileRequest
File to upload to the index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [File.FileApproxMetadata](#File-FileApproxMetadata) |  |  |
| fileSize | [uint64](#uint64) |  |  |






<a name="Maestro_Santaclaus-AddFileStatus"></a>

### AddFileStatus
Response with created file infos


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |
| diskId | [string](#string) |  |  |






<a name="Maestro_Santaclaus-ChangeFileDiskRequest"></a>

### ChangeFileDiskRequest
File to move to another disk


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |






<a name="Maestro_Santaclaus-ChangeFileDiskStatus"></a>

### ChangeFileDiskStatus
New file disk


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| diskId | [string](#string) |  |  |






<a name="Maestro_Santaclaus-GetDirectoryRequest"></a>

### GetDirectoryRequest
Directory to get


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dirId | [string](#string) | optional | If not set, get root directory |
| userId | [string](#string) |  |  |
| isRecursive | [bool](#bool) |  |  |






<a name="Maestro_Santaclaus-GetDirectoryStatus"></a>

### GetDirectoryStatus
Directory infos


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subFiles | [File.FilesIndex](#File-FilesIndex) |  |  |






<a name="Maestro_Santaclaus-GetFileRequest"></a>

### GetFileRequest
File to get


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |






<a name="Maestro_Santaclaus-GetFileStatus"></a>

### GetFileStatus
File infos


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [File.FileMetadata](#File-FileMetadata) |  |  |
| diskId | [string](#string) |  | todo time before availability ? |






<a name="Maestro_Santaclaus-MoveDirectoryRequest"></a>

### MoveDirectoryRequest
Directory to move


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dirId | [string](#string) |  | Dir to be moved |
| newDirId | [string](#string) |  | DirId to store this dir in (aka new parent dir) |






<a name="Maestro_Santaclaus-MoveDirectoryStatus"></a>

### MoveDirectoryStatus







<a name="Maestro_Santaclaus-MoveFileRequest"></a>

### MoveFileRequest
File to move


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |
| newDirId | [string](#string) |  |  |






<a name="Maestro_Santaclaus-MoveFileStatus"></a>

### MoveFileStatus







<a name="Maestro_Santaclaus-RemoveDirectoryRequest"></a>

### RemoveDirectoryRequest
Directory to remove from the index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dirId | [string](#string) |  |  |






<a name="Maestro_Santaclaus-RemoveDirectoryStatus"></a>

### RemoveDirectoryStatus
Directory removed infos


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileIdsToRemove | [string](#string) | repeated | todo is it actually fileIdsRemoved ? |






<a name="Maestro_Santaclaus-RemoveFileRequest"></a>

### RemoveFileRequest
File to remove from the index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |






<a name="Maestro_Santaclaus-RemoveFileStatus"></a>

### RemoveFileStatus
File removed infos






<a name="Maestro_Santaclaus-RemoveFilesRequest"></a>

### RemoveFilesRequest
Files to remove from the index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileIds | [string](#string) | repeated |  |






<a name="Maestro_Santaclaus-RemoveFilesStatus"></a>

### RemoveFilesStatus
Files removed infos






<a name="Maestro_Santaclaus-RemoveUserRequest"></a>

### RemoveUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) |  |  |






<a name="Maestro_Santaclaus-RenameDirectoryRequest"></a>

### RenameDirectoryRequest
Directory to move


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dirId | [string](#string) |  | Dir to be renamed |
| newDirName | [string](#string) |  | New Name |






<a name="Maestro_Santaclaus-RenameDirectoryStatus"></a>

### RenameDirectoryStatus







<a name="Maestro_Santaclaus-RenameFileRequest"></a>

### RenameFileRequest
file to rename and new file name


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  | file to be renamed |
| newFileName | [string](#string) |  | New name of file |






<a name="Maestro_Santaclaus-RenameFileStatus"></a>

### RenameFileStatus







<a name="Maestro_Santaclaus-UpdateFileSuccessRequest"></a>

### UpdateFileSuccessRequest
Uploaded file result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |
| newFileSize | [uint64](#uint64) |  |  |






<a name="Maestro_Santaclaus-UpdateFileSuccessStatus"></a>

### UpdateFileSuccessStatus
Update file success status





 

 

 


<a name="Maestro_Santaclaus-Maestro_Santaclaus_Service"></a>

### Maestro_Santaclaus_Service
Procedures from Maestro to Santaclaus

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| addFile | [AddFileRequest](#Maestro_Santaclaus-AddFileRequest) | [AddFileStatus](#Maestro_Santaclaus-AddFileStatus) | Files

Add a file to the index |
| virtualRemoveFile | [RemoveFileRequest](#Maestro_Santaclaus-RemoveFileRequest) | [RemoveFileStatus](#Maestro_Santaclaus-RemoveFileStatus) | Mark file as removed |
| virtualRemoveFiles | [RemoveFilesRequest](#Maestro_Santaclaus-RemoveFilesRequest) | [RemoveFilesStatus](#Maestro_Santaclaus-RemoveFilesStatus) | Mark files as removed |
| physicalRemoveFile | [RemoveFileRequest](#Maestro_Santaclaus-RemoveFileRequest) | [RemoveFileStatus](#Maestro_Santaclaus-RemoveFileStatus) | Remove file |
| physicalRemoveFiles | [RemoveFilesRequest](#Maestro_Santaclaus-RemoveFilesRequest) | [RemoveFilesStatus](#Maestro_Santaclaus-RemoveFilesStatus) | Remove files |
| moveFile | [MoveFileRequest](#Maestro_Santaclaus-MoveFileRequest) | [MoveFileStatus](#Maestro_Santaclaus-MoveFileStatus) | Chnage location (directory) of a file |
| renameFile | [RenameFileRequest](#Maestro_Santaclaus-RenameFileRequest) | [RenameFileStatus](#Maestro_Santaclaus-RenameFileStatus) | Chnage name of a file |
| getFile | [GetFileRequest](#Maestro_Santaclaus-GetFileRequest) | [GetFileStatus](#Maestro_Santaclaus-GetFileStatus) | Get file infos |
| updateFileSuccess | [UpdateFileSuccessRequest](#Maestro_Santaclaus-UpdateFileSuccessRequest) | [UpdateFileSuccessStatus](#Maestro_Santaclaus-UpdateFileSuccessStatus) | Upload file to disk successfully |
| changeFileDisk | [ChangeFileDiskRequest](#Maestro_Santaclaus-ChangeFileDiskRequest) | [ChangeFileDiskStatus](#Maestro_Santaclaus-ChangeFileDiskStatus) | Change file disk |
| addDirectory | [AddDirectoryRequest](#Maestro_Santaclaus-AddDirectoryRequest) | [AddDirectoryStatus](#Maestro_Santaclaus-AddDirectoryStatus) | Directories

Add a directory to the index |
| removeDirectory | [RemoveDirectoryRequest](#Maestro_Santaclaus-RemoveDirectoryRequest) | [RemoveDirectoryStatus](#Maestro_Santaclaus-RemoveDirectoryStatus) | Remove directory and all subdirectories and returns list of files to delete |
| moveDirectory | [MoveDirectoryRequest](#Maestro_Santaclaus-MoveDirectoryRequest) | [MoveDirectoryStatus](#Maestro_Santaclaus-MoveDirectoryStatus) | Chamge location (parent directory) of a direcory |
| renameDirectory | [RenameDirectoryRequest](#Maestro_Santaclaus-RenameDirectoryRequest) | [RenameDirectoryStatus](#Maestro_Santaclaus-RenameDirectoryStatus) | Change name of a directory |
| getDirectory | [GetDirectoryRequest](#Maestro_Santaclaus-GetDirectoryRequest) | [GetDirectoryStatus](#Maestro_Santaclaus-GetDirectoryStatus) | Get directory infos, if dirId is null, start from root directory |
| removeUser | [RemoveUserRequest](#Maestro_Santaclaus-RemoveUserRequest) | [RemoveDirectoryStatus](#Maestro_Santaclaus-RemoveDirectoryStatus) | Users

Remove all user directories and return files to be deleted |

 



<a name="common_Disk-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/Disk.proto



<a name="Disk-Disk"></a>

### Disk



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | uint32 size = 2; uint32 sizeAvailable = 3; |






<a name="Disk-DiskStatus"></a>

### DiskStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| status | [bool](#bool) |  |  |





 

 

 

 



<a name="common_Cron-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/Cron.proto



<a name="Cron-Job"></a>

### Job



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| schedule | [string](#string) |  |  |
| isPaused | [bool](#bool) |  |  |
| tasks | [Task](#Cron-Task) | repeated |  |






<a name="Cron-Task"></a>

### Task



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| isRunning | [bool](#bool) |  | A task thread can still exist even if the task is not running (in this case the task will be removed sooner) |





 

 

 

 



<a name="common_File-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/File.proto



<a name="File-DirMetadata"></a>

### DirMetadata
Metadata identifying a directory
Could be replaced by having only a &#39;isDirectory&#39; field in FileMetadata, making it a File/DirMetadata


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| approxMetadata | [FileApproxMetadata](#File-FileApproxMetadata) |  |  |
| dirId | [string](#string) |  |  |
| creation | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| lastEdit | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| state | [FileState](#File-FileState) |  |  |






<a name="File-File"></a>

### File



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [FileMetadata](#File-FileMetadata) |  |  |
| content | [bytes](#bytes) |  |  |






<a name="File-FileApproxMetadata"></a>

### FileApproxMetadata
Metadata regarding a file/directory itself and its location


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Filename | to be concatenated after dirname to find full absolute path |
| dirId | [string](#string) |  | Directory ID, in which the file is being moved/created |
| userId | [string](#string) |  | User identifier, generated by database | TODO clearly define userID globally |






<a name="File-FileMetadata"></a>

### FileMetadata



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| approxMetadata | [FileApproxMetadata](#File-FileApproxMetadata) |  |  |
| fileId | [string](#string) |  | TODO clearly define fileID globally |
| state | [FileState](#File-FileState) |  |  |
| lastEditorId | [string](#string) |  | todo useless ? // TODO clearly define userID globally |
| creation | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| lastEdit | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |






<a name="File-FilesIndex"></a>

### FilesIndex



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileIndex | [FileMetadata](#File-FileMetadata) | repeated |  |
| dirIndex | [DirMetadata](#File-DirMetadata) | repeated |  |






<a name="File-NewFile"></a>

### NewFile



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [FileApproxMetadata](#File-FileApproxMetadata) |  |  |
| content | [bytes](#bytes) |  |  |





 


<a name="File-FileState"></a>

### FileState


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN | 0 |  |
| UPLOADING | 1 |  |
| STORED | 2 |  |
| ASKED | 3 |  |
| DOWNLOADABLE | 4 |  |


 

 

 



<a name="Santaclaus_HardwareMalin_Santaclaus_HardwareMalin-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## Santaclaus_HardwareMalin/Santaclaus_HardwareMalin.proto



<a name="Santaclaus_HardwareMalin-GetDisksRequest"></a>

### GetDisksRequest
Get all possible disks






<a name="Santaclaus_HardwareMalin-GetDisksStatus"></a>

### GetDisksStatus
Get all possible disks


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| disks | [Disk.Disk](#Disk-Disk) | repeated |  |





 

 

 


<a name="Santaclaus_HardwareMalin-Santaclaus_HardwareMalin_Service"></a>

### Santaclaus_HardwareMalin_Service
Procedures from Maestro to Santaclaus

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| getDisks | [GetDisksRequest](#Santaclaus_HardwareMalin-GetDisksRequest) | [GetDisksStatus](#Santaclaus_HardwareMalin-GetDisksStatus) | Files

Get all possible disks |

 



<a name="Chouf_Maestro_Chouf_Maestro-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## Chouf_Maestro/Chouf_Maestro.proto



<a name="Chouf_Maestro-ChangeCronStateRequest"></a>

### ChangeCronStateRequest
Change CRON global state


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| isPaused | [bool](#bool) |  |  |






<a name="Chouf_Maestro-ChangeCronStateStatus"></a>

### ChangeCronStateStatus







<a name="Chouf_Maestro-ChangeJobStateRequest"></a>

### ChangeJobStateRequest
Change job state


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| isPaused | [bool](#bool) |  |  |






<a name="Chouf_Maestro-ChangeJobStateStatus"></a>

### ChangeJobStateStatus







<a name="Chouf_Maestro-ChangeMultipleInstancesStateRequest"></a>

### ChangeMultipleInstancesStateRequest
Allow/Disallow simultaneous tasks of the same job


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| doesAllowMultipleInstances | [bool](#bool) |  |  |






<a name="Chouf_Maestro-ChangeMultipleInstancesStateStatus"></a>

### ChangeMultipleInstancesStateStatus







<a name="Chouf_Maestro-ForceStartJobTaskRequest"></a>

### ForceStartJobTaskRequest
Force start a job task


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |






<a name="Chouf_Maestro-ForceStartJobTaskStatus"></a>

### ForceStartJobTaskStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| job | [Cron.Job](#Cron-Job) |  |  |






<a name="Chouf_Maestro-GetCronStatus"></a>

### GetCronStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| isPaused | [bool](#bool) |  | Does global state is paused |
| doesAllowMultipleInstances | [bool](#bool) |  | Does allow simultaneous tasks of the same job |
| totalNbrJobs | [uint32](#uint32) |  | Total number of jobs |
| totalNbrTasks | [uint32](#uint32) |  | Total number of tasks |






<a name="Chouf_Maestro-GetCronStatusRequest"></a>

### GetCronStatusRequest
Get global CRON status






<a name="Chouf_Maestro-GetJobRequest"></a>

### GetJobRequest
Get specific job


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |






<a name="Chouf_Maestro-GetJobStatus"></a>

### GetJobStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| job | [Cron.Job](#Cron-Job) |  |  |






<a name="Chouf_Maestro-GetJobsRequest"></a>

### GetJobsRequest
Get all jobs






<a name="Chouf_Maestro-GetJobsStatus"></a>

### GetJobsStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jobs | [Cron.Job](#Cron-Job) | repeated |  |






<a name="Chouf_Maestro-WaitTasksRequest"></a>

### WaitTasksRequest
Wait for all tasks to finish


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) | optional |  |






<a name="Chouf_Maestro-WaitTasksStatus"></a>

### WaitTasksStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| totalNbrTasks | [uint32](#uint32) |  | Total number of tasks (of all jobs or specific job) waited |





 

 

 


<a name="Chouf_Maestro-Chouf_Maestro_Service"></a>

### Chouf_Maestro_Service
Procedures between Chouf and Maestro

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| getCronStatus | [GetCronStatusRequest](#Chouf_Maestro-GetCronStatusRequest) | [GetCronStatus](#Chouf_Maestro-GetCronStatus) | CRON

Get CRON global state |
| getJobs | [GetJobsRequest](#Chouf_Maestro-GetJobsRequest) | [GetJobsStatus](#Chouf_Maestro-GetJobsStatus) | Get CRON jobs |
| getJob | [GetJobRequest](#Chouf_Maestro-GetJobRequest) | [GetJobStatus](#Chouf_Maestro-GetJobStatus) | Get specific CRON by its name |
| forceStartJobTask | [ForceStartJobTaskRequest](#Chouf_Maestro-ForceStartJobTaskRequest) | [ForceStartJobTaskStatus](#Chouf_Maestro-ForceStartJobTaskStatus) | Force to start a job task by the job name |
| changeCronState | [ChangeCronStateRequest](#Chouf_Maestro-ChangeCronStateRequest) | [ChangeCronStateStatus](#Chouf_Maestro-ChangeCronStateStatus) | Change CRON global state |
| changeJobState | [ChangeJobStateRequest](#Chouf_Maestro-ChangeJobStateRequest) | [ChangeJobStateStatus](#Chouf_Maestro-ChangeJobStateStatus) | Change job state |
| changeMultipleInstancesState | [ChangeMultipleInstancesStateRequest](#Chouf_Maestro-ChangeMultipleInstancesStateRequest) | [ChangeMultipleInstancesStateStatus](#Chouf_Maestro-ChangeMultipleInstancesStateStatus) | Allow/Disallow simultaneous tasks of the same job |
| waitTasks | [WaitTasksRequest](#Chouf_Maestro-WaitTasksRequest) | [WaitTasksStatus](#Chouf_Maestro-WaitTasksStatus) | Wait for all tasks to finish (of all jobs or specific job) |

 



<a name="Maestro_Vault_Maestro_Vault-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## Maestro_Vault/Maestro_Vault.proto



<a name="Maestro_Vault-DownloadFileRequest"></a>

### DownloadFileRequest
Download one file


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |






<a name="Maestro_Vault-DownloadFileStatus"></a>

### DownloadFileStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  |  |






<a name="Maestro_Vault-DownloadFilesElemStatus"></a>

### DownloadFilesElemStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |
| content | [bytes](#bytes) |  |  |






<a name="Maestro_Vault-DownloadFilesRequest"></a>

### DownloadFilesRequest
Download multiple files


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| files | [DownloadFileRequest](#Maestro_Vault-DownloadFileRequest) | repeated |  |






<a name="Maestro_Vault-DownloadFilesStatus"></a>

### DownloadFilesStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| files | [DownloadFilesElemStatus](#Maestro_Vault-DownloadFilesElemStatus) | repeated |  |






<a name="Maestro_Vault-DownloadStorageTypeFilesRequest"></a>

### DownloadStorageTypeFilesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| store_type | [storage_type](#Maestro_Vault-storage_type) |  |  |






<a name="Maestro_Vault-FileMetaInfo"></a>

### FileMetaInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |
| userId | [string](#string) |  |  |
| diskId | [string](#string) |  |  |
| store_types | [storage_type](#Maestro_Vault-storage_type) | repeated | it&#39;s possible to have no store type, then the array is empty

todo creation date ? // not a priority at all todo size // for getting UserDiskSpace |






<a name="Maestro_Vault-GetFileMetaInfoRequest"></a>

### GetFileMetaInfoRequest
File to get meta info from


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  | if all three are null, return all |






<a name="Maestro_Vault-GetFileMetaInfoStatus"></a>

### GetFileMetaInfoStatus
Meta info


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [FileMetaInfo](#Maestro_Vault-FileMetaInfo) |  |  |






<a name="Maestro_Vault-GetFilesDisksRequest"></a>

### GetFilesDisksRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file_ids | [string](#string) | repeated |  |






<a name="Maestro_Vault-GetFilesDisksStatus"></a>

### GetFilesDisksStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| disk_ids | [string](#string) | repeated |  |






<a name="Maestro_Vault-GetFilesMetaInfoRequest"></a>

### GetFilesMetaInfoRequest
Files to get meta info from


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) | optional | if all three are null, return all |
| diskId | [string](#string) | optional |  |
| store_type | [storage_type](#Maestro_Vault-storage_type) | optional | ? |






<a name="Maestro_Vault-GetFilesMetaInfoStatus"></a>

### GetFilesMetaInfoStatus
Meta info


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| files | [FileMetaInfo](#Maestro_Vault-FileMetaInfo) | repeated |  |






<a name="Maestro_Vault-ModifyFileRequest"></a>

### ModifyFileRequest
File to modify


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |
| content | [bytes](#bytes) |  |  |






<a name="Maestro_Vault-ModifyFileStatus"></a>

### ModifyFileStatus
Modify result






<a name="Maestro_Vault-RemoveFileRequest"></a>

### RemoveFileRequest
Files to remove


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  |  |






<a name="Maestro_Vault-RemoveFileStatus"></a>

### RemoveFileStatus
Remove result






<a name="Maestro_Vault-RemoveFilesRequest"></a>

### RemoveFilesRequest
Files to remove


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileIds | [string](#string) | repeated |  |






<a name="Maestro_Vault-RemoveFilesStatus"></a>

### RemoveFilesStatus
Remove result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileIdFailures | [string](#string) | repeated |  |






<a name="Maestro_Vault-RemoveUserRequest"></a>

### RemoveUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [string](#string) |  |  |






<a name="Maestro_Vault-RemoveUserStatus"></a>

### RemoveUserStatus







<a name="Maestro_Vault-UploadFileRequest"></a>

### UploadFileRequest
File to upload


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileId | [string](#string) |  | todo replace with FileMetaInfo |
| userId | [string](#string) |  |  |
| diskId | [string](#string) |  |  |
| content | [bytes](#bytes) |  |  |
| store_type | [storage_type](#Maestro_Vault-storage_type) | optional |  |






<a name="Maestro_Vault-UploadFileStatus"></a>

### UploadFileStatus
Upload result






<a name="Maestro_Vault-UploadFilesRequest"></a>

### UploadFilesRequest
Files to upload


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| files | [UploadFileRequest](#Maestro_Vault-UploadFileRequest) | repeated |  |






<a name="Maestro_Vault-UploadFilesStatus"></a>

### UploadFilesStatus
Upload result


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fileIdFailures | [string](#string) | repeated |  |





 


<a name="Maestro_Vault-storage_type"></a>

### storage_type


| Name | Number | Description |
| ---- | ------ | ----------- |
| NONE | 0 |  |
| UPLOAD_QUEUE | 1 |  |
| DOWNLOAD_QUEUE | 2 | todo replace by download stack |


 

 


<a name="Maestro_Vault-Maestro_Vault_Service"></a>

### Maestro_Vault_Service
Procedures from Maestro to Vault

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| uploadFile | [UploadFileRequest](#Maestro_Vault-UploadFileRequest) | [UploadFileStatus](#Maestro_Vault-UploadFileStatus) | Upload

Upload a file |
| uploadFiles | [UploadFilesRequest](#Maestro_Vault-UploadFilesRequest) | [UploadFilesStatus](#Maestro_Vault-UploadFilesStatus) | Upload multiple files |
| modifyFile | [ModifyFileRequest](#Maestro_Vault-ModifyFileRequest) | [ModifyFileStatus](#Maestro_Vault-ModifyFileStatus) | Modify existing file |
| removeFile | [RemoveFileRequest](#Maestro_Vault-RemoveFileRequest) | [RemoveFileStatus](#Maestro_Vault-RemoveFileStatus) | Remove

Remove multiple files |
| removeFiles | [RemoveFilesRequest](#Maestro_Vault-RemoveFilesRequest) | [RemoveFilesStatus](#Maestro_Vault-RemoveFilesStatus) | Remove multiple files |
| removeUser | [RemoveUserRequest](#Maestro_Vault-RemoveUserRequest) | [RemoveUserStatus](#Maestro_Vault-RemoveUserStatus) | Remove user related files and directories |
| downloadFile | [DownloadFileRequest](#Maestro_Vault-DownloadFileRequest) | [DownloadFileStatus](#Maestro_Vault-DownloadFileStatus) | todo download disk files

Download a file |
| downloadFiles | [DownloadFilesRequest](#Maestro_Vault-DownloadFilesRequest) | [DownloadFilesStatus](#Maestro_Vault-DownloadFilesStatus) | Download multiple files |
| downloadStorageTypeFiles | [DownloadStorageTypeFilesRequest](#Maestro_Vault-DownloadStorageTypeFilesRequest) | [DownloadFilesStatus](#Maestro_Vault-DownloadFilesStatus) | todo test |
| getFileMetaInfo | [GetFileMetaInfoRequest](#Maestro_Vault-GetFileMetaInfoRequest) | [GetFileMetaInfoStatus](#Maestro_Vault-GetFileMetaInfoStatus) | MetaInfo todo for vault-cache, add get metadata procedures :

get files meta-info by user, disk or file id |
| getFilesMetaInfo | [GetFilesMetaInfoRequest](#Maestro_Vault-GetFilesMetaInfoRequest) | [GetFilesMetaInfoStatus](#Maestro_Vault-GetFilesMetaInfoStatus) | get files meta-info by user, disk or file id |
| getFilesDisks | [GetFilesDisksRequest](#Maestro_Vault-GetFilesDisksRequest) | [GetFilesDisksStatus](#Maestro_Vault-GetFilesDisksStatus) | get files meta-info by user, disk or file id |

 



<a name="Maestro_HardwareMalin_Maestro_HardwareMalin-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## Maestro_HardwareMalin/Maestro_HardwareMalin.proto



<a name="Maestro_HardwareMalin-DiskStatusRequest"></a>

### DiskStatusRequest
Disk to ask


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| diskId | [string](#string) |  |  |






<a name="Maestro_HardwareMalin-DiskStatusStatus"></a>

### DiskStatusStatus
Response with disk status


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [bool](#bool) |  |  |






<a name="Maestro_HardwareMalin-SetDiskStateRequest"></a>

### SetDiskStateRequest
Disk to wakeup or shutdown


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| diskId | [string](#string) |  |  |
| state | [bool](#bool) |  |  |






<a name="Maestro_HardwareMalin-SetDiskStateStatus"></a>

### SetDiskStateStatus






 

 

 


<a name="Maestro_HardwareMalin-Maestro_HardwareMalin_Service"></a>

### Maestro_HardwareMalin_Service
Procedures from Maestro to HardwareMalin

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| diskStatus | [DiskStatusRequest](#Maestro_HardwareMalin-DiskStatusRequest) | [DiskStatusStatus](#Maestro_HardwareMalin-DiskStatusStatus) | Ask for disk status |
| setDiskState | [SetDiskStateRequest](#Maestro_HardwareMalin-SetDiskStateRequest) | [SetDiskStateStatus](#Maestro_HardwareMalin-SetDiskStateStatus) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

