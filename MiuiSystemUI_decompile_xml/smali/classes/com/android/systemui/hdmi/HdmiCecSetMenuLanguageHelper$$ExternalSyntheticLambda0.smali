.class public final synthetic Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mLocale:Ljava/util/Locale;

    .line 4
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 6
    return-void
    .line 9
.end method