.class public final Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Landroidx/activity/result/ActivityResult;

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    .line 4
    return-object p0
    .line 7
.end method
