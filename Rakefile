task :default => :tu
desc "Ejecucion de Pruebas"
task :tu do
  sh "ruby -I. test/test_1.rb"
end

desc "Prueba de Sumar"
task :sumar do
    sh "ruby -I. test/test_1.rb -n /sumar/"
end
desc "Prueba de Resta"
task :restar do
    sh "ruby -I. test/test_1.rb -n /restar/"
end