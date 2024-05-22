.class public final synthetic Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/preference/ListPreference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda5;->f$1:Landroidx/preference/ListPreference;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda5;->f$1:Landroidx/preference/ListPreference;

    .line 4
    sget-object v1, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string v0, "default"

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 12
    return-void
    .line 15
.end method
