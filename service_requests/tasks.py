from celery import shared_task
from .models import ServiceRequest

@shared_task
def process_attachment(service_request_id):
    service_request = ServiceRequest.objects.get(id=service_request_id)
    # Simulate processing (e.g., resizing, validation)
    print(f"Processing attachment for request: {service_request.request_type}")