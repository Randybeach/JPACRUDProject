<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='Style.css'>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="home.do">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item1 active">
        <a class="nav-link" href="add.do">New Passenger</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="allPassengers.do?num=1" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          All Passengers
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="allPassengers.do?num=1">By Flight Number</a>
          <a class="dropdown-item" href="allPassengers.do?num=2">By First Name</a>
          <a class="dropdown-item" href="allPassengers.do?num=3">By Last Name</a>
          <a class="dropdown-item" href="allPassengers.do?num=4">By Age</a>
        </div>
      </li>
      <li class="nav-item3">
        <a class="nav-link" href="#"></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" action="getPassenger.do" method="get">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="keyword">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<form:form action = "update.do" modelAttribute="passenger" method="POST">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">First</label>
      <form:input type="text" class="form-control" id="First" placeholder="${passenger.firstName}" path="firstName"/>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Last</label>
      <form:input type="text" class="form-control" id="Last" placeholder="Last" path="lastName" value="${passenger.lastName }"/>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Country</label>
      <form:input type="text" class="form-control" id="inputCity" path="country" value="${passenger.country}"/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">Age</label>
      <form:select id="inputState" class="form-control" path="age">
      <option selected>${passenger.age}</option>
       <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>8</option>
        <option>9</option>
        <option>10</option>
        <option>11</option>
        <option>12</option>
        <option>13</option>
        <option>14</option>
        <option>15</option>
        <option>16</option>
        <option>17</option>
        <option>18</option>
        <option>19</option>
        <option>20</option>
        <option>21</option>
        <option>22</option>
        <option>23</option>
        <option>24</option>
        <option>25</option>
        <option>26</option>
        <option>27</option>
        <option>28</option>
        <option>29</option>
        <option>30</option>
        <option>31</option>
        <option>32</option>
        <option>33</option>
        <option>34</option>
        <option>35</option>
        <option>36</option>
        <option>37</option>
        <option>38</option>
        <option>39</option>
        <option>40</option>
        <option>41</option>
        <option>42</option>
        <option>43</option>
        <option>44</option>
        <option>45</option>
        <option>46</option>
        <option>47</option>
        <option>48</option>
        <option>49</option>
        <option>50</option>
        <option>51</option>
        <option>52</option>
        <option>53</option>
        <option>54</option>
        <option>55</option>
        <option>56</option>
        <option>57</option>
        <option>58</option>
        <option>59</option>
        <option>60</option>
        <option>61</option>
        <option>62</option>
        <option>63</option>
        <option>64</option>
        <option>65</option>
        <option>66</option>
        <option>67</option>
        <option>68</option>
        <option>69</option>
        <option>70</option>
        <option>71</option>
        <option>72</option>
        <option>73</option>
        <option>74</option>
        <option>75</option>
        <option>76</option>
        <option>77</option>
        <option>78</option>
        <option>79</option>
        <option>80</option>
        <option>81</option>
        <option>82</option>
        <option>83</option>
        <option>84</option>
        <option>85</option>
        <option>86</option>
        <option>87</option>
        <option>88</option>
        <option>89</option>
        <option>90</option>
        <option>91</option>
        <option>92</option>
        <option>93</option>
        <option>94</option>
        <option>95</option>
        <option>96</option>
        <option>97</option>
        <option>99</option>
        <option>99</option>
        <option>100</option>
        <option>101</option>
        <option>102</option>
        <option>103</option>
        <option>104</option>
        <option>105</option>
      </form:select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Passport Number</label>
      <form:input type="text" class="form-control" id="inputZip" path="passport" value="${passenger.passport}"/>
    </div>
    <div class="form-group col-md-2">
      <form:input type="hidden" class="form-control" id="inputZip" path="id" value="${passenger.id}"/>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>