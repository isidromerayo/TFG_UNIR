import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NoEncontradoComponent } from './no-encontrado.component';

describe('NoEncontradoComponent', () => {
  let component: NoEncontradoComponent;
  let fixture: ComponentFixture<NoEncontradoComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [NoEncontradoComponent]
    });
    fixture = TestBed.createComponent(NoEncontradoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  xit('should create', () => {
    expect(component).toBeTruthy();
  });
});
