# Small global presentation tweaks for the academic portfolio.
module SitePolish
  DEFAULT_LIGHT_SCRIPT = <<~HTML
    <script>
      try {
        if (localStorage.getItem("theme") === null) {
          localStorage.setItem("theme", "light");
        }
      } catch (e) {}
    </script>
  HTML

  def self.apply(item)
    return unless item.respond_to?(:output_ext) && item.output_ext == ".html"
    return if item.output.nil? || item.output.empty?

    html = item.output

    # Use light mode for first-time visitors while preserving any explicit choice.
    html = html.sub("<head>", "<head>\n#{DEFAULT_LIGHT_SCRIPT}")

    # Make the navbar CV item open the PDF directly instead of an intermediate page.
    html = html.gsub(
      /href=(['\"])\/cv\/\1/,
      'href="/assets/pdf/Derek_Tsai_CV.pdf" target="_blank" rel="noopener"'
    )

    item.output = html
  end
end

Jekyll::Hooks.register :pages, :post_render do |page|
  SitePolish.apply(page)
end

Jekyll::Hooks.register :documents, :post_render do |document|
  SitePolish.apply(document)
end
