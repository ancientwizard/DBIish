use v6;
need DBDish;

unit class DBDish::TestMock:ver<0.6.4> does DBDish::Driver;
need DBDish::TestMock::Connection;

method connect() { DBDish::TestMock::Connection.new(:parent(self)) }
method version() { False }
