.class public Lcom/google/android/setupdesign/SetupWizardItemsLayout;
.super Lcom/google/android/setupdesign/SetupWizardListLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardItemsLayout;->getAdapter()Lcom/google/android/setupdesign/items/ItemAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/google/android/setupdesign/items/ItemAdapter;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/google/android/setupdesign/SetupWizardListLayout;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 3
    instance-of v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lcom/google/android/setupdesign/items/ItemAdapter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
