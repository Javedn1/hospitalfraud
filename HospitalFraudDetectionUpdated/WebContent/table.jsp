<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <title>Add / List Data (AngularJS)</title>
    <style>
	    .list_data { margin-bottom: 2rem }
	    table, th, td { border: 1px solid #AAA }
	    th { cursor: pointer }
    </style>
</head>
  
<body ng-controller="RecordCtrl">
    <div class="list_data">
        <h1>List Data</h1>
        <table>
            <tr>
                <th ng-click="type = 'include'; reverse = !reverse">Status</th>
                <th ng-click="type = 'state'; reverse = !reverse">bill No</th>
                <th ng-click="type = 'price'; reverse = !reverse">date</th>
                <th ng-click="type = 'tax'; reverse = !reverse">IssueBy</th>
                <th ng-click="type = 'price'; reverse = !reverse">Towards</th>
                <th ng-click="type = 'tax'; reverse = !reverse">Amount</th>
                <th>Action</th>
            </tr>
            <tr ng-repeat="record in records | orderBy:type:reverse">
                <td><input type="checkbox" ng-model="record.include"></td>
                <td>{{record.state | uppercase}}</td>
                <td>{{record.bill | uppercase}}</td>
                <td>{{record.date | uppercase}}</td>
                <td>{{record.issue | uppercase}}</td>
                <td>{{record.towards | uppercase}}</td>
                <td>{{record.price | currency}}</td>
                
                <td><button ng-click="Delete($index)">Delete</button></td>
            </tr>
            <tr>
                <td colspan="2">Total</td>
                <td>{{Totals().price | currency}}</td>
                <td>{{Totals().tax | currency}}</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <button ng-show="history.length > 0" ng-click="Undo()">Undo Delete</button>
    </div>
  
    <div class="add_data">
        <h1>Add Data</h1>
        <form ng-submit="Add()">
            <div class="field">
                <label for="bill">Bill no: </label>
                <input id="bill" type="text" placeholder="Bill no" maxlength="10" ng-model="newBill">
            </div>
            <div class="field">
                <label for="date">Date: </label>
                <input id="date" type="date" placeholder="date" maxlength="10" ng-model="newDate">
            </div>
            <div class="field">
                <label for="newIssue">IssueBy: </label>
                <input id="issue" type="text" placeholder="State" maxlength="10" ng-model="newIssue">
            </div>
            <div class="field">
                <label for="towards">Towards: </label>
                <input id="towards" type="text" placeholder="towards" min="0" ng-model="TowardsNew">
            </div>
            <div class="field">
                <label for="tax">Amount: </label>
                <input id="tax" type="number" placeholder="Tax" min="0" ng-model="newTax">
            </div>
            <div class="action">
                <button type="submit">Add</button>
                <button ng-click="Reset()">Reset</button>
            </div>
        </form>
    </div>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.11/angular.min.js"></script>
	<script>
	function RecordCtrl ($scope) {
        // Historical data
        $scope.history = [];

        // Default data (can be loaded from a database)
		$scope.records = [
			{ state: 'CA', bill: '1234',date:'10/12/23',issue: 'mahesh',towards: 'santosh',price: 22, include: false },
			{  state: 'BE', bill: '5678',date:'25/1/11',issue: 'mayuri',towards: 'sarika',price: 23, include: false }
		];

        // Total prices
		$scope.Totals = function () {
			var priceTotal = 0;
            

            // Loop through main records and calculate aggregate prices and taxes if include is true
			angular.forEach($scope.records, function (record) {
		        if (record.include) {
					priceTotal += record.price;
		            
		        }
			});

            // Return aggregate data
            return { price: priceTotal  };
		};

        // Delete data
        $scope.Delete = function (index) {
            // Remove first / oldest element from history if it reaches maximum capacity of 10 records
            if ($scope.history.length === 10)
                $scope.history.shift();
            // Add deleted record to historical records
            $scope.history.push($scope.records[index]);

            // Remove from main records (using index)
            $scope.records.splice(index, 1);
        };

        // Reset new data model
        $scope.Reset = function () {
            $scope.newState = '';
            $scope.newBill = '';
            $scope.newDate = '';
            $scope.newTowards = '';
            $scope.newIssue = '';
            $scope.newPrice = 0;
            $scope.newTax = 0;
        }
        $scope.Reset();

        // Add new data
        $scope.Add = function () {
            // Do nothing if no state is entered (blank)
            if (!$scope.newState)
                return;

            // Add to main records
            $scope.records.push({
                state: $scope.newState,
                bill:$scop.newTowards,
                date: $scope.newPrice,
                issue: $scope.newTax,
                towards:$scop.newTowards,
                price:Scop.newPrice,
                
                include: false
            });

            // See $Scope.Reset...
            $scope.Reset();
        }

        // Undo action (delete)
        $scope.Undo = function () {
            // Add last / most recent historical record to the main records
            $scope.records.push($scope.history[ $scope.history.length - 1 ]);

            // Remove last / most recent historical record
            $scope.history.pop();
        }
	}
	</script>
</body>
</html>