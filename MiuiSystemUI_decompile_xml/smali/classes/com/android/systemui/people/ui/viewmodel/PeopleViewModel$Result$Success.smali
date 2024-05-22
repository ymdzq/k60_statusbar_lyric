.class public final Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;
.super Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final data:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;->data:Landroid/content/Intent;

    .line 5
    return-void
    .line 7
.end method
