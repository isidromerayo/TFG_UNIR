import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CategoriaComponent } from './categoria.component';

describe('CategoriaComponent', () => {
  let component: CategoriaComponent;
  let fixture: ComponentFixture<CategoriaComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CategoriaComponent]
    });
    fixture = TestBed.createComponent(CategoriaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  xit('should create', () => {
    expect(component).toBeTruthy();
  });
});
