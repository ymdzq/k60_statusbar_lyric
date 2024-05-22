.class public final Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAvatar:Landroid/graphics/drawable/Drawable;

.field public final mName:Ljava/lang/String;

.field public final mUserAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mName:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mUserAccount:Ljava/lang/String;

    .line 9
    return-void
    .line 11
.end method
