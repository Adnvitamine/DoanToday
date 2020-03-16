# Fix ActiveStorage::Blob → ActionText::TrixAttachment conversion (using this
# patch until https://github.com/rails/rails/pull/37868 lands).
ActiveSupport.on_load(:active_storage_blob) do
    def to_trix_content_attachment_partial_path
      nil
    end
  end