.class public final synthetic Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/people/PeopleSpaceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/people/PeopleSpaceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/people/PeopleSpaceActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result;

    .line 2
    sget v0, Lcom/android/systemui/people/PeopleSpaceActivity;->$r8$clinit:I

    .line 4
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/people/PeopleSpaceActivity;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v0, p1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;

    .line 15
    iget-object p1, p1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;->data:Landroid/content/Intent;

    .line 17
    const/4 v0, -0x1

    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    const/4 p0, 0x0

    .line 31
    return-object p0
    .line 32
.end method
