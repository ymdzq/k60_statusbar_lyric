.class Lcom/android/settings/locale/MiuiLocaleSettings$3;
.super Ljava/lang/Object;
.source "MiuiLocaleSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/locale/MiuiLocaleSettings;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/locale/MiuiLocaleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/locale/MiuiLocaleSettings;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/settings/locale/MiuiLocaleSettings$3;->this$0:Lcom/android/settings/locale/MiuiLocaleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings$3;->this$0:Lcom/android/settings/locale/MiuiLocaleSettings;

    invoke-virtual {p0}, Lcom/android/settings/locale/MiuiLocaleSettings;->finish()V

    return-void
.end method
