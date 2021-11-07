;preorder
(defun preorder(tree)
  (cond 
  ((null tree) nil)
  (T (cons (car tree) (append (preorder (cadr tree))(preorder (caddr tree)))))))

;inorder
(defun inorder(tree)
  (cond
  ((null tree) nil)
  (T (append (inorder (left-subtree tree)) (list (car tree))(inorder (right-subtree tree))))))

;postorder
(defun postorder(tree)
  (cond
  ((null tree) nil)
  (T (append (postorder (left-subtree tree)) (postorder (right-subtree tree)) (list (car tree))))))
 
