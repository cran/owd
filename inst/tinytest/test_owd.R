#==================#
#                  #
#### UNIT TESTS ####
#                  #
#==================#

### Incorrect Input Length ###
expect_error(current = owd(character(2)),
             pattern = "one\\s+directory",
             info = "Incorrect input length")

### Missing Directory ###
dir_mystic <- sample(letters, 16, replace = TRUE)
dir_mystic <- paste(dir_mystic, collapse = "")
if (.Platform[["OS.type"]] == "windows"){
  dir_mystic <- paste0("C:/", dir_mystic)
} else {
  dir_mystic <- paste0("/", dir_mystic)
}
expect_error(current = owd(dir_mystic),
             pattern = "not\\s+found",
             info = "Missing directory")
rm(dir_mystic)

### No Access Privileges ###
if (.Platform[["OS.type"]] == "unix"){
  if (grepl("\\<(manjaro|ubuntu)\\>", Sys.info()[["release"]], ignore.case = TRUE)){
    expect_error(current = owd("/etc/sudoers.d"),
                 pattern = "do\\s+not\\s+have\\s+permission",
                 info = "No access privileges (Unix)")
  }
}
