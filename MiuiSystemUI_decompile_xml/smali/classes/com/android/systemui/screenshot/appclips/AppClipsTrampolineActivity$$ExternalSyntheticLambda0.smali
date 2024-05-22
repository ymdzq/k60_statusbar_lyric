.class public final synthetic Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    .line 2
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUserManager:Landroid/os/UserManager;

    .line 6
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method
