if defined? ::BasicObject
  class BasicObject < ::BasicObject
    undef_method :==
  end
elsif defined? Builder::BlankSlate
  BasicObject = Builder::BlankSlate
else
  class BasicObject
    instance_methods.each { |m| undef_method m unless (m =~ /^__/ || m == 'equal?' || m == 'class') }
  end
end
