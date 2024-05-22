.class public final Lcom/android/systemui/privacy/television/PrivacyItemsChip$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/television/PrivacyItemsChip;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/television/PrivacyItemsChip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip$1;->this$0:Lcom/android/systemui/privacy/television/PrivacyItemsChip;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip$1;->this$0:Lcom/android/systemui/privacy/television/PrivacyItemsChip;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
