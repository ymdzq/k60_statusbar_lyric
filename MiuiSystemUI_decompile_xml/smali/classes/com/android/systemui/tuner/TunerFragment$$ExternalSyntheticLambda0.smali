.class public final synthetic Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/TunerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/TunerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/tuner/TunerFragment;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/tuner/TunerFragment;

    .line 2
    sget-object v0, Lcom/android/systemui/tuner/TunerFragment;->DEBUG_ONLY:[Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method
