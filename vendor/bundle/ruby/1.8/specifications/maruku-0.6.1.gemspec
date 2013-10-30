# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{maruku}
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrea Censi", "Nathan Weizenbaum"]
  s.autorequire = %q{maruku}
  s.date = %q{2012-09-16}
  s.description = %q{Maruku is a Markdown interpreter in Ruby.
	It features native export to HTML and PDF (via Latex). The
	output is really beautiful!
	}
  s.email = %q{ben@benhollis.net}
  s.executables = ["maruku", "marutex"]
  s.files = ["lib/maruku/attributes.rb", "lib/maruku/defaults.rb", "lib/maruku/errors_management.rb", "lib/maruku/ext/div.rb", "lib/maruku/ext/math/elements.rb", "lib/maruku/ext/math/latex_fix.rb", "lib/maruku/ext/math/mathml_engines/blahtex.rb", "lib/maruku/ext/math/mathml_engines/itex2mml.rb", "lib/maruku/ext/math/mathml_engines/none.rb", "lib/maruku/ext/math/mathml_engines/ritex.rb", "lib/maruku/ext/math/parsing.rb", "lib/maruku/ext/math/to_html.rb", "lib/maruku/ext/math/to_latex.rb", "lib/maruku/ext/math.rb", "lib/maruku/helpers.rb", "lib/maruku/input/charsource.rb", "lib/maruku/input/extensions.rb", "lib/maruku/input/html_helper.rb", "lib/maruku/input/linesource.rb", "lib/maruku/input/parse_block.rb", "lib/maruku/input/parse_doc.rb", "lib/maruku/input/parse_span_better.rb", "lib/maruku/input/rubypants.rb", "lib/maruku/input/type_detection.rb", "lib/maruku/input_textile2/t2_parser.rb", "lib/maruku/maruku.rb", "lib/maruku/output/s5/fancy.rb", "lib/maruku/output/s5/to_s5.rb", "lib/maruku/output/to_html.rb", "lib/maruku/output/to_latex.rb", "lib/maruku/output/to_latex_entities.rb", "lib/maruku/output/to_latex_strings.rb", "lib/maruku/output/to_markdown.rb", "lib/maruku/output/to_s.rb", "lib/maruku/string_utils.rb", "lib/maruku/structures.rb", "lib/maruku/structures_inspect.rb", "lib/maruku/structures_iterators.rb", "lib/maruku/tests/benchmark.rb", "lib/maruku/tests/new_parser.rb", "lib/maruku/tests/tests.rb", "lib/maruku/textile2.rb", "lib/maruku/toc.rb", "lib/maruku/usage/example1.rb", "lib/maruku/version.rb", "lib/maruku.rb", "docs/changelog.md", "docs/div_syntax.md", "docs/entity_test.md", "docs/markdown_syntax.md", "docs/maruku.md", "docs/math.md", "docs/other_stuff.md", "docs/proposal.md", "tests/bugs/code_in_links.md", "tests/bugs/complex_escaping.md", "tests/math/syntax.md", "tests/math_usage/document.md", "tests/others/abbreviations.md", "tests/others/blank.md", "tests/others/code.md", "tests/others/code2.md", "tests/others/code3.md", "tests/others/email.md", "tests/others/entities.md", "tests/others/escaping.md", "tests/others/extra_dl.md", "tests/others/extra_header_id.md", "tests/others/extra_table1.md", "tests/others/footnotes.md", "tests/others/headers.md", "tests/others/hrule.md", "tests/others/images.md", "tests/others/inline_html.md", "tests/others/links.md", "tests/others/list1.md", "tests/others/list2.md", "tests/others/list3.md", "tests/others/lists.md", "tests/others/lists_after_paragraph.md", "tests/others/lists_ol.md", "tests/others/misc_sw.md", "tests/others/one.md", "tests/others/paragraphs.md", "tests/others/sss06.md", "tests/others/test.md", "tests/s5/s5profiling.md", "tests/unittest/abbreviations.md", "tests/unittest/alt.md", "tests/unittest/attributes/att2.md", "tests/unittest/attributes/att3.md", "tests/unittest/attributes/attributes.md", "tests/unittest/attributes/circular.md", "tests/unittest/attributes/default.md", "tests/unittest/blank.md", "tests/unittest/blanks_in_code.md", "tests/unittest/bug_def.md", "tests/unittest/bug_table.md", "tests/unittest/code.md", "tests/unittest/code2.md", "tests/unittest/code3.md", "tests/unittest/data_loss.md", "tests/unittest/divs/div1.md", "tests/unittest/divs/div2.md", "tests/unittest/divs/div3_nest.md", "tests/unittest/easy.md", "tests/unittest/email.md", "tests/unittest/encoding/iso-8859-1.md", "tests/unittest/encoding/utf-8.md", "tests/unittest/entities.md", "tests/unittest/escaping.md", "tests/unittest/extra_dl.md", "tests/unittest/extra_header_id.md", "tests/unittest/extra_table1.md", "tests/unittest/footnotes.md", "tests/unittest/headers.md", "tests/unittest/hex_entities.md", "tests/unittest/hrule.md", "tests/unittest/html2.md", "tests/unittest/html3.md", "tests/unittest/html4.md", "tests/unittest/html5.md", "tests/unittest/ie.md", "tests/unittest/images.md", "tests/unittest/images2.md", "tests/unittest/inline_html.md", "tests/unittest/inline_html2.md", "tests/unittest/links.md", "tests/unittest/links2.md", "tests/unittest/list1.md", "tests/unittest/list12.md", "tests/unittest/list2.md", "tests/unittest/list3.md", "tests/unittest/list4.md", "tests/unittest/lists.md", "tests/unittest/lists10.md", "tests/unittest/lists11.md", "tests/unittest/lists6.md", "tests/unittest/lists9.md", "tests/unittest/lists_after_paragraph.md", "tests/unittest/lists_ol.md", "tests/unittest/loss.md", "tests/unittest/math/equations.md", "tests/unittest/math/inline.md", "tests/unittest/math/math2.md", "tests/unittest/math/notmath.md", "tests/unittest/math/table.md", "tests/unittest/math/table2.md", "tests/unittest/misc_sw.md", "tests/unittest/notyet/escape.md", "tests/unittest/notyet/header_after_par.md", "tests/unittest/notyet/ticks.md", "tests/unittest/notyet/triggering.md", "tests/unittest/olist.md", "tests/unittest/one.md", "tests/unittest/paragraph.md", "tests/unittest/paragraph_rules/dont_merge_ref.md", "tests/unittest/paragraph_rules/tab_is_blank.md", "tests/unittest/paragraphs.md", "tests/unittest/pending/amps.md", "tests/unittest/pending/empty_cells.md", "tests/unittest/pending/link.md", "tests/unittest/pending/ref.md", "tests/unittest/recover/recover_links.md", "tests/unittest/red_tests/abbrev.md", "tests/unittest/red_tests/lists7.md", "tests/unittest/red_tests/lists7b.md", "tests/unittest/red_tests/lists8.md", "tests/unittest/red_tests/xml.md", "tests/unittest/references/long_example.md", "tests/unittest/references/spaces_and_numbers.md", "tests/unittest/smartypants.md", "tests/unittest/syntax_hl.md", "tests/unittest/table_attributes.md", "tests/unittest/test.md", "tests/unittest/underscore_in_words.md", "tests/unittest/wrapping.md", "tests/unittest/xml2.md", "tests/unittest/xml3.md", "tests/unittest/xml_instruction.md", "tests/utf8-files/simple.md", "bin/marudown", "bin/maruku", "bin/marutest", "bin/marutex", "unit_test_block.sh", "unit_test_span.sh", "Rakefile"]
  s.homepage = %q{http://github.com/bhollis/maruku}
  s.licenses = ["GPL-2"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Maruku is a Markdown-superset interpreter written in Ruby.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<syntax>, [">= 1.0.0"])
      s.add_development_dependency(%q<syntax>, ["~> 1.0.0"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
    else
      s.add_dependency(%q<syntax>, [">= 1.0.0"])
      s.add_dependency(%q<syntax>, ["~> 1.0.0"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
    end
  else
    s.add_dependency(%q<syntax>, [">= 1.0.0"])
    s.add_dependency(%q<syntax>, ["~> 1.0.0"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
  end
end
