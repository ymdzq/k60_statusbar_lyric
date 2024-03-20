.class final Lcom/android/settings/deviceinfo/SimEidPreferenceController$eidTitle$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SimEidPreferenceController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/SimEidPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$eidTitle$2;->this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$eidTitle$2;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$eidTitle$2;->this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->access$getTitle(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
