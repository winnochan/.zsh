GO111MODULE=on go get golang.org/x/tools/gopls@latest
GO111MODULE=on CGO_ENABLED=0 go get -trimpath -ldflags '-s -w' github.com/golangci/golangci-lint/cmd/golangci-lint
go get -u golang.org/x/tools/cmd/godoc
go get -u golang.org/x/tools/cmd/goimports
go get -u golang.org/x/tools/cmd/gorename
go get -u golang.org/x/tools/cmd/guru
go get -u github.com/cweill/gotests/...
go get -u github.com/davidrjenni/reftools/cmd/fillstruct
go get -u github.com/fatih/gomodifytags
go get -u github.com/godoctor/godoctor
go get -u github.com/haya14busa/gopkgs/cmd/gopkgs
go get -u github.com/josharian/impl
go get -u github.com/rogpeppe/godef

go install github.com/tokuhirom/git-xlsx-textconv@latest
