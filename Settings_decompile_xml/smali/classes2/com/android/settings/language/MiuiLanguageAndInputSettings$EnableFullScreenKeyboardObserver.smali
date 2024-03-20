.class Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnableFullScreenKeyboardObserver;
.super Landroid/database/ContentObserver;
.source "MiuiLanguageAndInputSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/language/MiuiLanguageAndInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableFullScreenKeyboardObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/os/Handler;)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnableFullScreenKeyboardObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    .line 1089
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1094
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1095
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnableFullScreenKeyboardObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    invoke-static {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->-$$Nest$mupdateFunctionPreferenceEnable(Lcom/android/settings/language/MiuiLanguageAndInputSettings;)V

    return-void
.end method
