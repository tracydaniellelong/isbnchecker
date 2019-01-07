require 'aws-sdk'
require 'csv'
load './local_ENV.rb'

def open_bucket()
  s3 = Aws::S3::Client.new(region: ENV['S3_REGION'], access_key_id: ENV['mykey'], secret_access_key: ENV['S3_SECRET'])
  file = ENV['S3_FILE']
  bucket = ENV['S3_BUCKET']
  isbnfile = s3.get_object(bucket: bucket, key: ENV['S3_FILE'])
  CSV.parse(isbnfile.body) do |num, result|
    p "the number is #{num} and resut is #{result}"
  end
end

open_bucket()


#s3 = Aws::S3::Client.new(profile: profile_name, region: region, access_key_id: 'xxx', secret_access_key: 'xxx')

#resp = s3.get_object(bucket: bucket, key: 'isbn_list.csv')
#valid_list = []
#isbn_list = []
#CSV.parse(resp.body, :headers => true) do |row|
