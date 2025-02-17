String mapErrorToMessage(String error) {
  if (error.contains('timeout')) {
    return 'Network timeout. Please check your connection.';
  } else if (error.contains('404')) {
    return 'Resource not found. Please try again later.';
  } else if (error.contains('401')) {
    return 'Unauthorized. Please try again later.';
  } else if (error.contains('500')) {
    return 'Internal server error. Please try again later.';
  }
  return 'Something went wrong. Please try again later.';
}
