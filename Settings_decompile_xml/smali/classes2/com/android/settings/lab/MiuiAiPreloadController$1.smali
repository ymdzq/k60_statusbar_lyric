.class Lcom/android/settings/lab/MiuiAiPreloadController$1;
.super Ljava/lang/Object;
.source "MiuiAiPreloadController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/lab/MiuiAiPreloadController;-><init>(Landroidx/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lab/MiuiAiPreloadController;


# direct methods
.method constructor <init>(Lcom/android/settings/lab/MiuiAiPreloadController;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/settings/lab/MiuiAiPreloadController$1;->this$0:Lcom/android/settings/lab/MiuiAiPreloadController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/lab/MiuiAiPreloadController$1;->this$0:Lcom/android/settings/lab/MiuiAiPreloadController;

    invoke-static {p0, p2}, Lcom/android/settings/lab/MiuiAiPreloadController;->-$$Nest$mbackgroundStartSwitchPreferenceOnChange(Lcom/android/settings/lab/MiuiAiPreloadController;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
