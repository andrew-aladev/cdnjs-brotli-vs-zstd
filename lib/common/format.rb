require "filesize"

FORMAT_PERCENT_ROUND_LENGTH = 2
COMPRESSION_LEVEL_FORMAT    = "%2d".freeze

def format_percent(index, length)
  return "100.00" if length <= 1

  percent = index.to_f * 100 / (length - 1)
  format(
    "%.#{FORMAT_PERCENT_ROUND_LENGTH}f",
    percent.round(FORMAT_PERCENT_ROUND_LENGTH)
  )
end

def format_filesize(size, precision = nil)
  Filesize.new(size).pretty :precision => precision
end

def format_compression_level(compression_level)
  format COMPRESSION_LEVEL_FORMAT, compression_level
end
