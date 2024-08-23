
# A simple script to create .Rmd files from .r files and knit them to .md files
# The script loops through all relevant .r files in the lectures directory

# List all .r files in the lectures directory
r_files <- list.files("lectures", pattern = "\\.r$", full.names = TRUE, recursive = TRUE)

# Create .Rmd files from .r files
for (i in seq_along(r_files[1:3])) {
  r_file <- r_files[i]
  rmd_file <- sub("\\.r$", ".Rmd", r_file)
  md_file <- sub("\\.r$", ".md", r_file)
  knitr::spin(r_file, knit = FALSE)
  #rmarkdown::render(rmd_file)
  knitr::knit(rmd_file, output = md_file)
}

