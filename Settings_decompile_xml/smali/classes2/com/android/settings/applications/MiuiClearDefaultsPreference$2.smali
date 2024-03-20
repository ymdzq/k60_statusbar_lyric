.class Lcom/android/settings/applications/MiuiClearDefaultsPreference$2;
.super Ljava/lang/Object;
.source "MiuiClearDefaultsPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/MiuiClearDefaultsPreference;->updateUI(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$2;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/settings/applications/MiuiClearDefaultsPreference$2;->this$0:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    invoke-static {p0}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->-$$Nest$mresetLaunchDefaultsUi(Lcom/android/settings/applications/MiuiClearDefaultsPreference;)V

    return-void
.end method
