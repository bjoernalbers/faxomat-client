describe Faxomat::Client::CLI do
  let(:cli) { Faxomat::Client::CLI.new }
  let(:argv) { %w(--phone 0123456789 --title chunky chunky.pdf) }

  describe '#parse' do
    it 'assigns phone' do
      opts = cli.parse(argv)
      expect(opts[:phone]).to eq '0123456789'
    end

    it 'assigns title' do
      opts = cli.parse(argv)
      expect(opts[:title]).to eq 'chunky'
    end

    it 'assigns args' do
      opts = cli.parse(argv)
      expect(opts.args).to eq ['chunky.pdf']
    end
  end
end
