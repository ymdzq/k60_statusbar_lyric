.class public final Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final a11yRepo:Lcom/android/systemui/accessibility/data/repository/AccessibilityRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/data/repository/AccessibilityRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;->a11yRepo:Lcom/android/systemui/accessibility/data/repository/AccessibilityRepository;

    .line 5
    return-void
    .line 7
.end method
