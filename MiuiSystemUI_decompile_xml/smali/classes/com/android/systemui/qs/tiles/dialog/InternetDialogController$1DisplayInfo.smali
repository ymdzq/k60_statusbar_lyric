.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final originalName:Ljava/lang/CharSequence;

.field public final subscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field public uniqueName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/telephony/SubscriptionInfo;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;->subscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    .line 7
    return-void
    .line 9
.end method
