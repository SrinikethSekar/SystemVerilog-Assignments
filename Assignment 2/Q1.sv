//Code for queue build-in methods size, insert (n/2 position, n position, n-1 p delete, pop_front,pop_back, push_front and push_back.
module Q1;


	int q[$];

	initial begin

		int mid;

		q={1,2,3,4,5};
		$display("Initial queue: %p ",q);

		$display("Queue size: %0d",q.size());

		//inserting size 
		mid=q.size()/2;   //  5/2 is inserting inside the mid
		q.insert(mid,99);
		$display("After inserting 99 at the position %0d:%p",mid,q);


		q.insert(q.size(),100);
		$display("After inserting 100 at end :%p",q);

		q.insert(q.size()-2,77);
		$display("After inserting 77 at end :%p",q);

		q.delete(q.size()-1);
		$display("After deleting : %p",q);

		q.pop_front();
		$display("After pop_front:%p",q);

		q.pop_back();
		$display("After pop_back:%p",q);

		q.push_front(11);
		$display("After pushing 11 in front:%p",q);

		q.push_back(21);
		$display("After pushing 21 in back:%p",q);

	end 
endmodule

//output
//  Initial queue: '{1, 2, 3, 4, 5} 
// # Queue size: 5
// # After inserting 99 at the position 2:'{1, 2, 99, 3, 4, 5}
// # After inserting 100 at end :'{1, 2, 99, 3, 4, 5, 100}
// # After inserting 77 at end :'{1, 2, 99, 3, 4, 77, 5, 100}
// # After deleting : '{1, 2, 99, 3, 4, 77, 5}
// # After pop_front:'{2, 99, 3, 4, 77, 5}
// # After pop_back:'{2, 99, 3, 4, 77}
// # After pushing 11 in front:'{11, 2, 99, 3, 4, 77}
// # After pushing 21 in back:'{11, 2, 99, 3, 4, 77, 21}
