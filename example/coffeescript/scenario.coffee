###
Do NOT manually edit this file, these tests were generated by "npm run testExamples".
Changes to this file may cause incorrect behavior and will be lost when tests are rerun.
###
# CoffeeScript
describe 'My App', ->
  # CoffeeScript
  describe 'default route', ->
    it 'should automatically redirect to / when location hash/fragment is empty', ->
      browser().navigateTo 'index.html'
      expect(browser().location().url()).toBe '/'
  
    it 'should automatically redirect to / when location hash/fragment is invalid', ->
      browser().navigateTo '#/foo-bar-bas'
      expect(browser().location().url()).toBe '/'
  
    it 'should not automatically redirect to / when location hash/fragment is valid', ->
      browser().navigateTo '#/about'
      expect(browser().location().url()).toBe '/about'
  
# CoffeeScript
  describe 'my view', ->
    beforeEach ->
      browser().navigateTo '#/'
  
    it 'should contain expected text', ->
      expect(element('[ng-view] p:first').text()).toBe 'this is the home page.'
  
# CoffeeScript
  describe 'my view', ->
    beforeEach ->
      browser().navigateTo '#/'
  
    it 'should contain my directive tag', ->
      elm = element('[ng-view] my-dir')
      expect(elm.count()).toBe 1
  
# CoffeeScript
  describe 'my view', ->
    beforeEach ->
      browser().navigateTo '#/'
  
    it 'should contain my directive attribute', ->
      elm = element('[ng-view] [my-dir]')
      expect(elm.count()).toBe 1
  
# CoffeeScript
  describe 'my view', ->
    beforeEach ->
      browser().navigateTo '#/'
  
    it 'should contain my directive class name', ->
      elm = element('[ng-view] .my-dir')
      expect(elm.count()).toBe 1
  
