class ProxyMask
  
  def self.new(constant_name)
    Object.const_set(constant_name, Class.new(BasicObject))
    constant = Object.const_get(constant_name)
    constant.class_exec do
      
      def initialize(instance = Object.new, attr_hash = {})
        @instance = instance
        attr_hash.each do |name,value|
          self.class.send(:define_method, name.to_sym, lambda { value })
        end
      end
      
      def method_missing(name, *args, &block)
        @instance.send(name, *args, &block)
      end
      
    end
  end
  
end
