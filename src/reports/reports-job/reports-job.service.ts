import { Process, Processor } from '@nestjs/bull';
import { ReportsService } from '../reports/reports.service';
import { Job } from 'bull';

@Processor('reports')
export class ReportsJobService {
  constructor(private reportsService: ReportsService) {}

  @Process() // indica o método que via ser ativado quando o job da fila for ser processado
  async produce(job: Job<{ reportId: number }>) {
    await this.reportsService.produce(job.data.reportId);
    return {};
  }
}
