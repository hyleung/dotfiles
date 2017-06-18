function reset-aws-env -d "Reset AWS env vars"
  set -e AWS_ACCESS_KEY_ID
  set -e AWS_SECRET_ACCESS_KEY
  set -e AWS_SESSION_TOKEN
end

function sts-assume-role -d "Assume an STS role"
  set role_arn $argv[1]
  set session_name $argv[2]
  set json (aws sts assume-role --role-arn $role_arn --role-session-name $session_name)
  set -gx AWS_ACCESS_KEY_ID (echo $json | jq '[.Credentials.AccessKeyId][0]')
  set -gx AWS_SECRET_ACCESS_KEY (echo $json | jq '[.Credentials.SecretAccessKey][0]')
  set -gx AWS_SESSION_TOKEN (echo $json | jq '[.Credentials.SessionToken][0]')
end

