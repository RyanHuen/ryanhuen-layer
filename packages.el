;;; packages.el --- ryanhuen layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: ryanhuencompany <ryanhuencompany@ryanhuenwork-All-Series>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `ryanhuen-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `ryanhuen/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `ryanhuen/pre-init-PACKAGE' and/or
;;   `ryanhuen/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst ryanhuen-packages
  '(
    company
    xclip
    swiper
    )
)

(defun ryanhuen/init-xclip()
  (use-package xclip
    :defer t
    :init
    (xclip-mode 1))
  )

(defun ryanhuen/post-init-company()
  (setq company-minimum-prefix-length 3)
  )

(defun zilongshanren-misc/post-init-swiper ()
      )


;;; packages.el ends here
