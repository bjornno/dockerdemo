lst_ips = ARGV.clone
Process.wait(Process.spawn("docker run -p 80:3000 -t bjornno/proxy ruby /run_proxy.rb #{lst_ips.join(' ')}"))

