;preorder
(defun preorder(tree)
  (cond 
  ((null tree) nil)
  (T (cons (car tree) (append (preorder (cadr tree))(preorder (caddr tree)))))))

;inorder
(defun inorder(tree)
  (cond
  ((null tree) nil)
  (T (append (inorder (caddr tree)) (list (car tree))(inorder (cadr tree))))))

;postorder
(defun postorder(tree)
  (cond
  ((null tree) nil)
  (T (append (postorder (caddr tree)) (postorder (cadr tree)) (list (car tree))))))
 
