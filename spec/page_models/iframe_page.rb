class IframePage < SitePrism::Page
  element :iframe, "iframe.pl-iframe", visible: false
  element :iframe_collapse, "iframe.pl-pane--collapse", visible: false
end
