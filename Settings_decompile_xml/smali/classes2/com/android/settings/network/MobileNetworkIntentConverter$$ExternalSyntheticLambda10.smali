.class public final synthetic Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkIntentConverter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda10;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda10;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->$r8$lambda$QrmrwbI7E_Ka1osdxieCgHnEmc4(Lcom/android/settings/network/MobileNetworkIntentConverter;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
