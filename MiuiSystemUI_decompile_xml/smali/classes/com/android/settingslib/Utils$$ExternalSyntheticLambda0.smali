.class public final synthetic Lcom/android/settingslib/Utils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/Utils$$ExternalSyntheticLambda0;->f$0:Landroid/os/UserHandle;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/Utils$$ExternalSyntheticLambda0;->f$0:Landroid/os/UserHandle;

    .line 2
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 4
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 12
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 14
    move-result p0

    .line 17
    if-ne p1, p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
    .line 23
.end method
