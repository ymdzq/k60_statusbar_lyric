.class public final Lcom/android/systemui/shared/recents/utilities/ViewRippler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mRipple:Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;

.field public mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;-><init>(Lcom/android/systemui/shared/recents/utilities/ViewRippler;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRipple:Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;

    .line 10
    return-void
    .line 12
.end method
