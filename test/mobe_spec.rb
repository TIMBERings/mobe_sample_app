require 'rspec/core'
require 'watir-webdriver'
require_relative 'data_load'

describe 'MOBE Sample' do
  include DataLoad
  before :all do

    fork do
        `#{__dir__}/../node_modules/.bin/mobe`
    end

    sleep 2 #Wait until MOBE is up

    register_get('java', 'Java technology allows you to work and play in a secure computing environment. Upgrading to the latest Java version improves the security of your system, as older versions do not include the latest security updates.')
    register_get('javascript', 'JavaScript is a high level, dynamic, untyped, and interpreted programming language. It has been standardized in the ECMAScript language specification.')
    register_get('python', 'Python is a programming language that lets you work quickly and integrate systems more effectively')
    register_get('c#', 'C# (pronounced as see sharp) is a multi-paradigm programming language encompassing strong typing, imperative, declarative, functional, generic, object-oriented (class-based), and component-oriented programming disciplines.')
    register_get('ruby', 'Ruby is a dynamic, reflective, object-oriented, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan. According to its authors, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, and Lisp.')

    register_post
    register_put
    register_delete 1
    register_delete 2
    register_delete 3
    register_delete 4

    @browser = Watir::Browser.new :firefox
    @browser.goto "file://#{__dir__}/../src/index.html"
  end

  after :all do
    abort
    @browser.quit
  end

  it 'handles GET' do
    sleep 30
  end

  it 'handles POST'

  it 'handles PUT'

  it 'handles PATCH'

  it 'handles DELETE'
end