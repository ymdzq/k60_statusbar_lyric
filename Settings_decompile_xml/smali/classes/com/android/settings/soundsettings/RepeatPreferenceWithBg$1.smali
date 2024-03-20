.class Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$1;
.super Ljava/lang/Object;
.source "RepeatPreferenceWithBg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->showMultiChoiceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;


# direct methods
.method constructor <init>(Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$1;->this$0:Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 142
    iget-object p0, p0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg$1;->this$0:Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->onDialogClosed(Z)V

    return-void
.end method
