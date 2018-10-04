class BreadcrumbsBuilder < BreadcrumbsOnRails::Breadcrumbs::Builder
  def render
    @context.render "/shared/breadcrumbs", elements: @elements
  end
end
