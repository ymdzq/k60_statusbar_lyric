.class public final Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final collapseToDot:Z

.field public final colorRes:I

.field public final privacyTypes:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->privacyTypes:Ljava/util/List;

    .line 5
    iput p1, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->colorRes:I

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->collapseToDot:Z

    .line 9
    return-void
    .line 11
.end method
