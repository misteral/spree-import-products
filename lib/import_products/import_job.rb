module ImportProducts
  class ImportJob
    attr_accessor :product_import_id
    attr_accessor :user_id

    def initialize(product_import_record, user)
      self.product_import_id = product_import_record.id
      self.user_id = user.id
    end

    def perform
      begin
        product_import = ProductImport.find(self.product_import_id)
        product_import.start
        results = product_import.import_data!(IMPORT_PRODUCT_SETTINGS[:transaction])
        Spree::UserMailer.product_import_results(Spree::User.find(self.user_id)).deliver
        product_import.complete
      rescue Exception => exp
        product_import.fail
        Spree::UserMailer.product_import_results(Spree::User.find(self.user_id), exp.message).deliver
      end
    end
  end
end

