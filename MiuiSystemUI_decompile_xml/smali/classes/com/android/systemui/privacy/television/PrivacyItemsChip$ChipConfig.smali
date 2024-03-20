.class public final Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
