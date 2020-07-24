#==============================#
#                              #
#### OPEN WORKING DIRECTORY ####
#                              #
#==============================#

### Function ###
owd <- function(dir = '.') {
  
  ## Checks ##
  if (length(dir) != 1L) stop('Only one directory path may be specified.')
  if (!dir.exists(dir)) stop('Directory not found.')
  if (file.access(dir, 4L) != 0L) stop('You do not have permission to access this directory.')
  
  ## Path Expansion ##
  dir <- normalizePath(dir)
  
  ## OS Differences ##
  if (.Platform[['OS.type']] == 'unix') {
    
    command <- if (Sys.info()[['sysname']] == 'Darwin') 'open' else 'xdg-open'
    
    # Output #
    return(system2(command, dir, stdout = FALSE, stderr = FALSE, wait = FALSE))
    
  } else if (Sys.info()[['sysname']] == 'Windows') {
    
    # Output #
    return(shell.exec(dir))
    
  } else {
    
    ## Unsupported OS ##
    stop('Operating system not supported.')
    
  }
  
}
