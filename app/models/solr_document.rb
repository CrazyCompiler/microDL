# frozen_string_literal: true
class SolrDocument
  include Blacklight::Solr::Document
  include Blacklight::Gallery::OpenseadragonSolrDocument

  # Adds Hyrax behaviors to the SolrDocument.
  include Hyrax::SolrDocumentBehavior


  # self.unique_key = 'id'

  def related_works
    related_works_IDS = self[Solrizer.solr_name('related_url')]
    related_works = []
    if related_works_IDS.kind_of?(Array)
      for workID in related_works_IDS
        begin
          found_work = SolrDocument.find(workID)
          related_works << found_work
        rescue
          puts "[solr_document] No work found of id : #{workID}"
        end
      end
    end

    return related_works
  end

  def index
    self[Solrizer.solr_name('index')]
  end

  def run
    self[Solrizer.solr_name('run')]
  end

  def rerun
    self[Solrizer.solr_name('rerun')]
  end

  def camcol
    self[Solrizer.solr_name('camcol')]
  end

  def field
    self[Solrizer.solr_name('field')]
  end

  def mjd
    self[Solrizer.solr_name('mjd')]
  end

  def ra
    self[Solrizer.solr_name('ra')]
  end

  def dec
    self[Solrizer.solr_name('dec')]
  end

  def node
    self[Solrizer.solr_name('node')]
  end

  def incl
    self[Solrizer.solr_name('incl')]
  end

  def xbore
    self[Solrizer.solr_name('xbore')]
  end

  def mu_start
    self[Solrizer.solr_name('mu_start')]
  end

  def mu_end
    self[Solrizer.solr_name('mu_end')]
  end

  def nu_start
    self[Solrizer.solr_name('nu_start')]
  end

  def nu_end
    self[Solrizer.solr_name('nu_end')]
  end

  def xbin
    self[Solrizer.solr_name('xbin')]
  end

  def ybin
    self[Solrizer.solr_name('ybin')]
  end

  def ifindx
    self[Solrizer.solr_name('ifindx')]
  end

  def nbalkan
    self[Solrizer.solr_name('nbalkan')]
  end

  # Email uses the semantic field mappings below to generate the body of an email.
  SolrDocument.use_extension(Blacklight::Document::Email)

  # SMS uses the semantic field mappings below to generate the body of an SMS email.
  SolrDocument.use_extension(Blacklight::Document::Sms)

  # DublinCore uses the semantic field mappings below to assemble an OAI-compliant Dublin Core document
  # Semantic mappings of solr stored fields. Fields may be multi or
  # single valued. See Blacklight::Document::SemanticFields#field_semantics
  # and Blacklight::Document::SemanticFields#to_semantic_values
  # Recommendation: Use field names from Dublin Core
  use_extension(Blacklight::Document::DublinCore)

  # Do content negotiation for AF models. 

  use_extension( Hydra::ContentNegotiation )
end
