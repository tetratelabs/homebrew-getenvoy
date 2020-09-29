# Copyright 2019 Tetrate Labs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Envoy < Formula
    desc "Certified, compliant and conformant builds of Envoy proxy"
    homepage "https://getenvoy.io"
    url "https://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.15.1.p0.g670a4a6-1p69.ga5345f6-darwin-release-x86_64.tar.xz"
    version "1.15.1"
    sha256 "4027cf80710e4a1ce5e8ba4462e511ec09368709c5517341fcdc1e5af2db288e"

    head do
        url "https://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.15.1.p0.g670a4a6-1p69.ga5345f6-darwin-release-x86_64.tar.xz"
        sha256 "4027cf80710e4a1ce5e8ba4462e511ec09368709c5517341fcdc1e5af2db288e"
    end

    stable do
        url "https://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.15.1.p0.g670a4a6-1p69.ga5345f6-darwin-release-x86_64.tar.xz"
        sha256 "4027cf80710e4a1ce5e8ba4462e511ec09368709c5517341fcdc1e5af2db288e"
    end

    bottle :unneeded

    def install
        bin.install "bin/envoy"
    end

    test do
        # TODO(dio): more tests, e.g. CVE tests.
        assert_match /clean-getenvoy/, %x('#{bin}/envoy --version')
    end
end
