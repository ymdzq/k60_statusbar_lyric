.class Lcom/android/settings/MiuiLocalePicker$2;
.super Ljava/lang/Object;
.source "MiuiLocalePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiLocalePicker;->initSearchBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiLocalePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiLocalePicker;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/settings/MiuiLocalePicker$2;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker$2;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
